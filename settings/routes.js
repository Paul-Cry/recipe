'use strict'

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

    // app
    //     .route('/betting/auth/get-data')
    //     .get(usersController.parse())

    // app
    //     .route('/api/users')
    //     .get(passport.authenticate('jwt', { session: false }), usersController.getAllUsers)
    //

}