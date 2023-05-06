# فعالیت ۵
در این فعالیت به پیاده سازی بخش سمت سرور یک اپلیکیشن Contact یا مدیریت مخاطب ها (دفترچه تلفن) می پردازیم. 

مراحل اماده سازی فعالیت

در مرحله اول، یک فولدر با نام  backend_assignment5 بسازید و با VSCode آن فولدر را باز کنید. سپس دستور 
git init را در داخل ترمینال VSCode که مسیر آن، خود پروژه است اجرا کنید. پس از این مرحله دستور git status باید بدون خطا برای پروژه شما اجرا شود. 

سپس دستور npm init را اجرا کرده و در صورت نیاز، اطلاعاتی که از شما می پرسد را کامل کنید. پس از انجام این کار، یک فایل package.json در پروژه شما ساخته می شود. حال این فایل را توسط git ، (چه از طریق ترمینال و یا چه از طریق صفحه VSCode) commit کنید و عنوان commit خود را "first init" قرار دهید.  

از این پس، تا هر قسمت از پروژه را که انجام دادید، آن را commit کنید تا به تاریخچه پروژه اضافه شود. (پس از پیاده سازی و تست هر وقت کوچک از کد، آن را commit کنید) 

سپس یک پروژه در gitlab با نام backend_assignment5 بسازید و به کمک سرچ در گوگل و دستور 
git remote add … پروژه خود را به gitlab repository وصل کنید. این بخش از فعالیت شما بسیار مهم است چرا که تحویل تکالیف از این به بعد، در gitlab می باشد. سپس با دستور git push تاریخچه local خود را به repository منتقل کنید.  

از این مرحله وارد پیاده سازی یک اپلیکیشن express شود. این اپلیکیشن APIهای مختلفی برای دریافت مخاطب یا مخاطب ها، جستجو در مخاطب ها بر اساس نام و نام خانوادگی، جستجو در مخاطب ها بر اساس شماره تماس، ایجاد یک مخاطب جدید، به روز رسانی اطلاعات یک مخاطب و حذف یک مخاطب دارد.

فایل دیتابیس موجود در فولدر فعالیت را بر روی دیتابیس local خود اجرا کنید. همچنین table موجود در فایل را برای فهم بهتر ساختار دیتابیس بررسی و مطالعه کنید.  

یادگیری جدید این فعالیت، ذخیره کردن اطلاعات مهم مثلا password ها یا credential ها در فایل .env می باید. لذا به هیچ وجه اطلاعات مربوط به دیتابیس (host, user, password, port) را در کد خود نگذاشته و commit نکنید. بخش آموزشی هفته در خصوص .env را مطالعه کنید و بر اساس آن، پایه پروژه خود را بنا کنید.

اپلیکیشن شما باید شامل route های زیر باشد:



### Create contact
- Route: `/contact`
- Method: `POST`
- Body sample: 
```
{
    fist_name: 'john',
    last_name: 'brown',
    phone_number: "+989125741123",
    work_number: null
}
```
- Success Response sample:
```
{
    id: 1,
    fist_name: 'john',
    last_name: 'brown',
    phone_number: "+989125741123",
    work_number: null
}
```
---
### Get contact by id
- Route: `/contact/:id`
- Method: `GET`
- Success Response sample:
```
{
    id: 1,
    fist_name: 'john',
    last_name: 'brown',
    phone_number: "+989125741123",
    work_number: null
}
```
---
### Update contact by id
- Route: `/contact/:id`
- Method: `PUT`
- Body sample (all the data, include the old and the updated ones): 
```
{
    fist_name: 'john',
    last_name: 'white',
    phone_number: '+989125741123',
    work_number: '+18897123894'
}
```
- Success Response sample:
```
{
    id: 1,
    fist_name: 'john',
    last_name: 'white',
    phone_number: '+989125741123,
    work_number: '+18897123894'
}
```
---


### Delete contact by id
- Route: `/contact/:id`
- Method: `DELETE`
- Success Response sample:
```
{
    message: 'Contact deletec successfully.'
}
```
---
### Get all contacts
- Route: `/contact/all`
- Method: `GET`
- Success Response sample:
```
[
    {
        id: 1,
        fist_name: 'john',
        last_name: 'brown',
        phone_number: "+989125741123",
        work_number: '+18897123894'
    },
    {
        id: 2,
        fist_name: 'Farid',
        last_name: 'Hamm',
        phone_number: "+88761327753",
        work_number: null
    }
]
```
---

در نهایت route های پیاده سازی شده را توسط postman تست کنید.

در نظر داشته باشید حتما هر قسمت کوچک از فعالیت را که پیاده سازی کردید، تغییرات ایجاد شده را در تاریخته پروژه commit کنید. 

در پروژه به قوائد REST فکر کنید و تلاش کنید مفهوم آنها را به کمک این فعالیت بیشتر درک کنید. 