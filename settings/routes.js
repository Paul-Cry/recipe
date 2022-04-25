'use strict'
const parser = require('../parse/recipe_pase_site')
module.exports = (app) => {
    const passport = require('passport')
    const usersController = require('../Controller/UsersController.js')


// Здесь я прописываю route и основываясь на них будут делаться запросы в базу данных
// и возвращаться нужные данные с api

    app
        .route('/betting/auth/signup')
        .post(usersController.signup)

    app
        .route('/betting/auth/signin')
        .post(usersController.signin)

    app
        .route('/recipe')
        .get(parser.parse())

    app
        .route('/api/test')
        .get()



}