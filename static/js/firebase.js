
   var firebaseConfig = {
     apiKey: "AIzaSyA9JXKrWCMtFrbviL2wK4znjaK0pz2TSCs",
     authDomain: "supermarket-prube.firebaseapp.com",
     projectId: "supermarket-prube",
     storageBucket: "supermarket-prube.appspot.com",
     messagingSenderId: "1025805489389",
     appId: "1:1025805489389:web:e9a322c21b5799c54ca8e4",
     measurementId: "G-4SQWCRHF18"
   };
   // Initialize Firebase
   firebase.initializeApp(firebaseConfig);
   firebase.analytics();


const signInWithPhoneButton = document.getElementById('signInWithPhone');
const codeField = document.getElementById('code');
const getCodeButton = document.getElementById('getCode');
const phoneNumberField = document.getElementById('phoneNumber');
const auth = firebase.auth();

window.recaptchaVerifier = new firebase.auth.RecaptchaVerifier('recaptcha-container');

recaptchaVerifier.render().then(widgetId => {
window.recaptchaWidgetId = widgetId;
})

const sendVerificationCode = () => {
  const phoneNumber = phoneNumberField.value;
  const appVerifier = window.recaptchaVerifier;
  auth.signInWithPhoneNumber("+57" + phoneNumber, appVerifier)
  .then(confirmationResult => {
  window.confirmationResult = confirmationResult;
  const sentCodeId = confirmationResult.verificationId;
  console.log(sentCodeId);
  signInWithPhoneButton.addEventListener('click', () => signInWithPhone(sentCodeId));
  })
}

const signInWithPhone = sentCodeId => {
  const code = codeField.value;
  //console.log(code);
    confirmationResult.confirm(code).then(function (result) {
    // User signed in successfully.
    var user = result.user;
    user.getIdToken().then(
      function(idToken){
        console.log(idToken);
      }).catch(function(error){
          //error
      }
    )
    // ...
  }).catch(function (error) {
    // User couldn't sign in (bad verification code?)
    // ...
  });


  // const credential = firebase.auth.PhoneAuthProvider.credential(sentCodeId, code);
  // auth.signInWithCredential(credential)
  // .then(() => {
  //   //  window.location.assign('#');
  //     //console.log('Ok.......');
  // })
  // .catch(error => {
  //   console.error(error);
  // })
 }

getCodeButton.addEventListener('click', sendVerificationCode);
