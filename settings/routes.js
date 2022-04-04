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

    // app
    //     .route('/api/users')
    //     .get(passport.authenticate('jwt', { session: false }), usersController.getAllUsers)
    //
    // app
    //     .route('/api/form')
    //     .get(usersController.form)
    //
    // app
    //     .route('/api/form_add')
    //     .post(usersController.form_add)
    // app
    //     .route('/api/form_delete')
    //     .post(usersController.form_delete)

}