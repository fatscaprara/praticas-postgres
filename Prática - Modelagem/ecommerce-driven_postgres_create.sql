CREATE TABLE "public.Users" (
	"id" serial NOT NULL,
	"name" serial(255) NOT NULL,
	"email" serial(255) NOT NULL,
	"password" serial(255) NOT NULL,
	CONSTRAINT "Users_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Products" (
	"id" serial NOT NULL,
	"name" serial(255) NOT NULL,
	"main_url_image" serial(255) NOT NULL,
	"category_id" serial NOT NULL,
	"size_id" int NOT NULL,
	CONSTRAINT "Products_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.product-images" (
	"id" serial NOT NULL,
	"product_id" int NOT NULL,
	"image_id" int NOT NULL,
	CONSTRAINT "product-images_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Images" (
	"id" serial NOT NULL,
	"url_image" serial(255) NOT NULL,
	CONSTRAINT "Images_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Categories" (
	"id" serial NOT NULL,
	"name" serial(255) NOT NULL,
	CONSTRAINT "Categories_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Sizes" (
	"id" serial NOT NULL,
	"name" varchar(255) NOT NULL,
	CONSTRAINT "Sizes_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Sales" (
	"id" serial NOT NULL,
	"user_id" serial NOT NULL,
	"product_id" int NOT NULL,
	"date" serial NOT NULL,
	"user_address" varchar(255) NOT NULL,
	"amount" int NOT NULL,
	"state" varchar(255) NOT NULL,
	CONSTRAINT "Sales_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);




ALTER TABLE "Products" ADD CONSTRAINT "Products_fk0" FOREIGN KEY ("category_id") REFERENCES "Categories"("id");
ALTER TABLE "Products" ADD CONSTRAINT "Products_fk1" FOREIGN KEY ("size_id") REFERENCES "Sizes"("id");

ALTER TABLE "product-images" ADD CONSTRAINT "product-images_fk0" FOREIGN KEY ("product_id") REFERENCES "Products"("id");
ALTER TABLE "product-images" ADD CONSTRAINT "product-images_fk1" FOREIGN KEY ("image_id") REFERENCES "Images"("id");




ALTER TABLE "Sales" ADD CONSTRAINT "Sales_fk0" FOREIGN KEY ("user_id") REFERENCES "Users"("id");
ALTER TABLE "Sales" ADD CONSTRAINT "Sales_fk1" FOREIGN KEY ("product_id") REFERENCES "Products"("id");








