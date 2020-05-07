//here I'm setting up the middleware which will handle jwt ( in case we use it in our dev process).

/*Things you should keep on mind:
1. The tokens are generated in the login and singup endpoint controllers since only those routes should provide tokens.
2. We must create a global middleware which will decode our tokens, I can handle this since its pretty easy to do. However,
we must apply this middleware to every route.
3. We should store the token in localstorage or in a cookie (both of them have their flaws so idk).
*/