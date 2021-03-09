M-IT: Office online store
CMS OpenCart and 1C integration module: Enterprise

To work the module, you need installed on the PHP 5.3 and above web server, IonCube PHP Loader, the SOAP extension for PHP.
VQMOD is required.


Installation

1. Make sure that VQMOD is installed on your site. If not, then install it.

2. Copy the contents of the UPLOAD folder / (1CGW /, Admin / and VQMOD / directory) to the root of your store. Available files will not be overwritten.
Note:
If the administrative panel of your store is not at the address / admin, then in Upload / Rename the Admin folder / appropriately.

3. If the administrative panel of your store is not at the address / admin, then you need to make a change to the 1CGW / init.php file. In the 6th line
Require_ONCE ('../ admin / config.php');
Change the path to the file on
Require_ONCE ('../ Your_name_Papki_S_Adfeitative_chasty / Config.php');

Also in the VQMOD / XML / Exchange_1C.xml file, you must adjust the file paths in the right way. In lines:
<file name = "admin / controller / common / header.php">
<File Name = "admin / view / template / common / header.tpl">
<file name = "admin / model / catalog / product.php">
Change Admin to your_name_pad_s_dentisitive_chast.

4. You must make changes to 4 files:

one). Admin / Model / Catalog / Category.php
In the AdDCategory and Editcategory and Editcategory functions after the row
$ this-> cache-> delete ('category');
Add a string
Return $ Category_ID;

one). Admin / Model / Catalog / Manufacturer.php
In the AddManufacturer and EditManufacturer functions after the row
$ this-> cache-> delete ('manufacturer');
Add a string
RETURN $ MANUFACTURER_ID;

3). Admin / Model / Catalog / Product.php
In the AdDProduct and EditProduct functions after the row
$ this-> cache-> delete ('Product');
Add a string
Return $ product_id;

four). System / Database / MySQL.php
In the function __construct change the first string
If (! $ this-> link = mysql_connect ($ hostname, $ username, $ password)) {
on
If (! $ this-> link = mysql_connect ($ hostname, $ username, $ password, true)) {

5. In the administrative panel of your store in the "System" section -> "Users" -> "User Groups" go to editing the group of your user.
Allow viewing and editing "Extension / Exchange_1C".

6. In the administrative panel of your store, go to the "Additions" section -> "M-IT: Exchange 1C". Click the "Install Module" button on the upper right side of the screen.
Now you can edit SEO settings for goods and categories and other parameters.
For the correct operation of the module, it is necessary that the data on the Safety tab in the module settings in the online store coincided with similar data of the module in 1C: Enterprise.


Notes

If the unloading of goods from 1C does not pass, it is necessary:
1. In the browser, open the HTTP page: //vash_domen/1cgw/index.php and make sure there are no errors. You must see the XML structure of the file.
2. Make sure the data coincide on the Safety tab in the online store and 1c.
If all the points are fine, and the unloading does not go, contact the technical support of the module.
