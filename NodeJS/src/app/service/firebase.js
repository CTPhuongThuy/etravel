const admin = require('firebase-admin')

// Initialize firebase admin SDK
admin.initializeApp({
  credential: admin.credential.cert('firebaseAdminsdk.json'),
  storageBucket: 'capstoneetravel-d42ad.appspot.com'
})
// Cloud storage
const bucket = admin.storage().bucket()

module.exports = {
  bucket
}
