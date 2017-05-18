import React from 'react';

class UploadButton extends React.Component {
  upload(e) {
    e.preventDefault();
    cloudinary.openUploadWidget(
      window.cloudinary_options, (err, images) => {
        if (err === null) {
          //upload successful
        }
      }
    );
  }

  render() {
    return(
      <button onClick={this.upload}>replace with Upload logo</button>
    );
  }
}

export default UploadButton;
