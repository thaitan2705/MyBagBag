﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using BagBag.Models;

namespace BagBag.Areas.Management.Controllers
{
    public class ProductsController : Controller
    {
        private MyBagBagEntities db = new MyBagBagEntities();

        // GET: Management/Products
        public ActionResult Index()
        {
            var products = db.Products.Include(p => p.Category).Include(p => p.Promotion).Include(p => p.Supplier);
            return View(products.ToList());
        }

        // GET: Management/Products/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // GET: Management/Products/Create
        public ActionResult Create()
        {
            ViewBag.CategoryId = new SelectList(db.Categories, "CategoryId", "CategoryName");
            ViewBag.PromotionId = new SelectList(db.Promotions, "PromotionId", "PromotionName");
            ViewBag.SupplierId = new SelectList(db.Suppliers, "SupplierId", "CompanyName");
            return View();
        }

        // POST: Management/Products/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ProductId,ProductName,ProductDetails,ProductStatus,ProductUpdate,ProductQty,ProductSold,SupplierId,CategoryId,PromotionId")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Products.Add(product);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CategoryId = new SelectList(db.Categories, "CategoryId", "CategoryName", product.CategoryId);
            ViewBag.PromotionId = new SelectList(db.Promotions, "PromotionId", "PromotionName", product.PromotionId);
            ViewBag.SupplierId = new SelectList(db.Suppliers, "SupplierId", "CompanyName", product.SupplierId);
            return View(product);
        }

        // GET: Management/Products/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            ViewBag.CategoryId = new SelectList(db.Categories, "CategoryId", "CategoryName", product.CategoryId);
            ViewBag.PromotionId = new SelectList(db.Promotions, "PromotionId", "PromotionName", product.PromotionId);
            ViewBag.SupplierId = new SelectList(db.Suppliers, "SupplierId", "CompanyName", product.SupplierId);
            return View(product);
        }

        // POST: Management/Products/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ProductId,ProductName,ProductDetails,ProductStatus,ProductUpdate,ProductQty,ProductSold,SupplierId,CategoryId,PromotionId")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Entry(product).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CategoryId = new SelectList(db.Categories, "CategoryId", "CategoryName", product.CategoryId);
            ViewBag.PromotionId = new SelectList(db.Promotions, "PromotionId", "PromotionName", product.PromotionId);
            ViewBag.SupplierId = new SelectList(db.Suppliers, "SupplierId", "CompanyName", product.SupplierId);
            return View(product);
        }

        // GET: Management/Products/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // POST: Management/Products/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Product product = db.Products.Find(id);
            db.Products.Remove(product);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult UploadProducts(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            var products = db.Products.Include(s => s.ImgProducts).SingleOrDefault(p => p.ProductId == id);
            if (products == null)
            {
                object Err = "Information not find";
                return View("Error", Err);
            }
            return View(products);
        }
        [HttpPost]
        public ActionResult UploadProducts(int id, HttpPostedFileBase[] files)
        {
            byte max = 0;
            var listImg = db.ImgProducts.Where(p => p.ProductId == id).ToList();
            if (listImg.Count > 0)
                max = listImg.Max(p => p.SortImg);
            var listFile = files.Where(p => p != null);
            foreach (var f in listFile)
            {
                //Tạo một đối tượng
                var img = new ImgProduct();
                img.ProductId = id;
                img.Img_Product = f.FileName;
                img.SortImg = ++max;
                db.ImgProducts.Add(img);
                var path = Server.MapPath("~/myImg/BagBag/" + f.FileName);
                f.SaveAs(path);
            }
            if (listFile.Any())
                db.SaveChanges();
            return RedirectToAction("UploadProducts");
        }
        public ActionResult DeleteImg(int id, int? ProductId)
        {
            if (ProductId.HasValue)
            {
                try
                {
                    var img = db.ImgProducts.Find(id);
                    if (img == null)
                        return RedirectToAction("Index");
                    db.ImgProducts.Remove(img);
                    var fileName = img.Img_Product;
                    var path = Server.MapPath("~/myImg/BagBag/" + fileName);
                    var file = new FileInfo(path);

                    if (file.Exists)
                    {
                        file.Delete();
                    }

                    db.SaveChanges();
                    return RedirectToAction("UploadProducts");
                }

                catch (Exception ex)
                {
                    object mess = "Không thể xóa IMG " + ex.Message;
                    return View("Error", mess);
                }
            }

            TempData["Success_Mess"] = "<script>alert('Delete Success')</script>";
            return Redirect("~/Products/UploadProducts/" + ProductId);
        }
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
