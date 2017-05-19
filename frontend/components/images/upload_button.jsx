import React from 'react';

class UploadButton extends React.Component {

  upload(e) {
    e.preventDefault();
    cloudinary.openUploadWidget(
      window.cloudinary_options, (err, images) => {
        if (err === null) {
          //upload successful
          this.props.postImage(images[0].url)
        }
      }
    );
  }

  render() {
    return(
      <button onClick={this.upload.bind(this)}>replace with Upload logo</button>
    );
  }
}

export default UploadButton;


//IMAGE CLASS
//Add upload button on new story form
