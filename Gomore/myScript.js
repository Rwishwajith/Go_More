

function login(){
const swalWithBootstrapButtons = swal.mixin({
confirmButtonClass: 'btn btn-success',
cancelButtonClass: 'btn btn-danger',
buttonsStyling: false,
})

swalWithBootstrapButtons({
title: 'Are you sure?',
text: "You won't be able to revert this!",
type: 'warning',
showCancelButton: true,
confirmButtonText: 'Yes, delete it!',
cancelButtonText: 'No, cancel!',
reverseButtons: true
}).then((result) => {
if (result.value) {
swalWithBootstrapButtons(
'Deleted!',
'Your file has been deleted.',
'success'
)
} else if (
// Read more about handling dismissals
result.dismiss === swal.DismissReason.cancel
) {
swalWithBootstrapButtons(
'Cancelled',
'Your imaginary file is safe :)',
'error'
)
}
})
}

