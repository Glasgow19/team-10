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
import Button from "react-bootstrap/Button";

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

    MAP.areas.push({
        name: "1",
        coords: [1561,636,40],
        shape: 'circle',
        preFillColor: "lightblue"
     });

    MAP.areas.push({
        name: "2",
        coords: [1538,549,42],
        shape: 'circle',
        preFillColor: "lightblue"
     });

    MAP.areas.push({
        name: "3",
        coords: [1561,636,40],
        shape: 'circle',
        preFillColor: "lightblue"
     });

    MAP.areas.push({
        name: "4",
        coords: [1219,545,32],
        shape: 'circle',
        preFillColor: "lightblue"
     });

    MAP.areas.push({
        name: "5",
        coords: [1290,545,35],
        shape: 'circle',
        preFillColor: "lightblue"
     });

    MAP.areas.push({
        name: "6",
        coords: [1561,636,40],
        shape: 'circle',
     	preFillColor: "lightblue"
     });

    MAP.areas.push({
        name: "7",
        coords: [1408,457,39],
        shape: 'circle',
        preFillColor: "lightblue"
     });

    MAP.areas.push({
        name: "8",
        coords: [950,460,37],
        shape: 'circle',
        preFillColor: "lightblue"
     });
    MAP.areas.push({
        name: "9",
        coords: [993,654,37],
        shape: 'circle',
        preFillColor: "lightblue"
     });
    MAP.areas.push({
        name: "10",
        coords: [843,642,40],
        shape: 'circle',
        preFillColor: "lightblue"
     });
    MAP.areas.push({
        name: "11",
        coords: [1838,441,37],
        shape: 'circle',
        preFillColor: "lightblue"
     });

    return (
      <React.Fragment>
        <link
          rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossOrigin="anonymous"
        />
        <Navbar style={navStyle} className="justify-content-center">
          <img
            alt=""
            src={Logo}
            width="100"
            height="100"
            className="d-inline-block align-top"
          />
        </Navbar>
        <Container fluid>
          <Row>
            <Col>
              <div className='mt-3'>
              <Button variant="light" size="lg" href="/">Back</Button>
              </div>
            </Col>
          </Row>
          <Row className="text-center">
            <Col>
              <h1 className="display-4">Floor {this.props.params[0].floor_id} </h1>
            </Col>
          </Row>
          <Row className="text-center">
            <Col className="d-flex justify-content-center">
              <ImageMapper
                width={1050}
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
