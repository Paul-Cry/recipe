const fetch = require("node-fetch");
const puppeteer = require('puppeteer');


exports.parse = async ()=>{
    const browser = await puppeteer.launch({headless: false});//headless: false показывать браузер
    const page = await browser.newPage();
    await page.goto('https://www.iamcook.ru/event/everyday/everyday-lunch');
    await page.mainFrame().waitForNavigation()

    await page.$eval('#email', el => el.value = 'test@example.com'); // вписываю данные в input c id email
    await page.click('input[type="submit"]'); // нажатие на кнопку
    const result = await page.evaluate(()=>{ // Здесь работаю с DOM
        let name = Array.from(document.querySelector('html body table.midcontainer tbody tr td div#event table tbody tr td.leftside div.recfield').children)[0];
        console.log(name)
    })

    await browser.close();
    return result;

}

