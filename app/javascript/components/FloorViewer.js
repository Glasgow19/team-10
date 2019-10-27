import React from "react";
import Navbar from "react-bootstrap/Navbar";
import Container from "react-bootstrap/Container";
import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";
import Image from "react-bootstrap/Image";
import Logo from "../../assets/images/gsc_logo.svg";
import MapImage from "../../assets/images/floor_1.png";
import PropTypes from "prop-types";
import ImageMapper from 'react-image-mapper';

class FloorViewer extends React.Component {
  clickedOutside(evt) {
  }

  clicked(area) {
		console.log(area);
	}

  render() {
    var navStyle = {
      background: '#2e2d44'
    };

    var MAP = {
      name: "my-map",
      areas: []
    };

    for (var i = 0; i < this.props.params.length; i++) {
      MAP.areas.push({
        name: this.props.params[i].name,
        coords: Array.from(this.props.params[i].coordinates.split(','), Number),
        shape: 'poly',
        fillColor: 'rgba(170, 17, 53, 0.5)'
      });
    }

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
        <Container fluid>
          <Row className="text-center">
            <Col>
              <h1>Floor {this.props.params.floor_id} </h1>
            </Col>
          </Row>
          <Row className="text-center">
            <Col className="text-center">
              <ImageMapper
                width={800}
                imgWidth={3000}
                src={MapImage}
                map={MAP}
                onImageClick={evt => this.clickedOutside(evt)}
                onClick={area => this.clicked(area)}
              />
            </Col>
          </Row>
        </Container>
      </React.Fragment>
    );
  }
}

export default FloorViewer;
