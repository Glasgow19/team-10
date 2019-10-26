import React from "react";
import Navbar from "react-bootstrap/Navbar";
import Logo from "../../assets/images/gsc_logo.svg";

import PropTypes from "prop-types";
class IndexContainer extends React.Component {

  render() {
    var navStyle = {
      background: '#2e2d44'
    };

    return (
      <React.Fragment>
        <link
          rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossOrigin="anonymous"
        />
        <Navbar style={navStyle}>
          <img
            alt=""
            src={Logo}
            width="80"
            height="80"
            className="d-inline-block align-top"
          />
        </Navbar>
      </React.Fragment>
    );
  }
}

export default IndexContainer;
