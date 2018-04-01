function validate()
      {
         var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
         if( document.myForm.Name.value == "" )
         {
            alert( "Please provide your name!" );
            document.myForm.Name.focus() ;
            return false;
         }
         
         if( document.myForm.EMail.value == "" )
         {
            alert( "Please provide your Email!" );
            document.myForm.EMail.focus() ;
            return false;
         }
         
         if( document.myForm.Zip.value == "" ||
        isNaN( document.myForm.Zip.value ) || // to detertmine it is a no. or not
         document.myForm.Zip.value.length != 6 )
         {
            alert( "Please provide a zip in the format ######." );
            document.myForm.Zip.focus() ;
            return false;
         }
         
         if( document.myForm.residanceAt.value == "-1" )
         {
            alert( "Residace feild cant be empty!" );
            return false;
         }
         if (reg.test( document.myForm.EMail.value) == false) 
        {
            alert('Invalid Email Address');
            return false;
        }



         return( true );


      }