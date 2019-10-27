import React from "react";
import Navbar from "react-bootstrap/Navbar";
import Container from "react-bootstrap/Container";
import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";
import Image from "react-bootstrap/Image";
import Logo from "../../assets/images/gsc_logo.svg";
import MapImage from "../../assets/images/floor_1.png";
import PropTypes from "prop-types";
import ModalViewer from "./ModalViewer";
import ImageMapper from 'react-image-mapper';
import Button from "react-bootstrap/Button";
import Hearing from "../../assets/images/hearing_impairment.png"
import Visual from "../../assets/images/visual_impairment.png"
import Placeholder from "../../assets/images/placeholder.png"

class FloorViewer extends React.Component {
  state = { show: false };

  showModal = () => {
    this.setState({ show: true });
  };

  hideModal = () => {
    this.setState({ show: false });
  };

  clickedOutside(evt) {
  }

  clicked(area) {
		console.log(area);
	}

  render() {
    const { exhibits } = this.props;

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

    for (var i = 0; i < this.props.exhibits.length; i++) {
      MAP.areas.push({
        id: this.props.exhibits[i].id,
        name: this.props.exhibits[i].name,
        coords: Array.from(this.props.exhibits[i].coordinates.split(','), Number),
        shape: 'circle',
        preFillColor: "lightblue"
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
              <div className="mt-3">
                <Button variant="light" size="lg" href="/">
                  Back
                </Button>
              </div>
            </Col>
          </Row>
          <Row className="text-center">
            <Col>
              <h1 className="display-4">
                Floor {this.props.params[0].floor_id}{" "}
              </h1>
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
                onClick={this.showModal}
              />
            </Col>
          </Row>
        </Container>
        <ModalViewer show={this.state.show} handleClose={this.hideModal}>
          <Row>
            <Col sm={6} className="m-2">
              <h3>Description</h3>
              <p>
                A free-standing exhibit that allows visitors to measure their
                height before adding their result to a graph of height versus
                age. The exhibit features an ultrasound height device,
                touchscreen and barcode scanner. Results are added to the graph
                using blue or pink sticker dots, which are available in a recess
                under the screen.
              </p>
            </Col>
            <Col sm={4}>
              <h3>Suitable for</h3>
              <ul className="list-group">
                <li className="list-group-item d-flex justify-content-between align-items-center">
                  <p>This exhibition is audio described</p>
                  <span className="badge badge-primary badge-pill">
                    <img
                      alt=""
                      src={Hearing}
                      width="30"
                      height="30"
                      className="d-inline-block align-top"
                    />
                  </span>
                </li>
                <li className="list-group-item d-flex justify-content-between align-items-center">
                  <p>This exhibition supports people with visual impairment</p>
                  <span className="badge badge-primary badge-pill">
                    <img
                      alt=""
                      src={Visual}
                      width="30"
                      height="30"
                      className="d-inline-block align-top"
                    />
                  </span>
                </li>
              </ul>
            </Col>
          </Row>
          <Row>
            <Col sm>
              <img
                alt=""
                src={Placeholder}
                width="350"
                height="300"
                className="d-inline-block align-top"
              />
            </Col>
            <Col sm>
              <div class="panel panel-info">
                <div class="panel-heading">
                  <h3 class="panel-title">Key Facts</h3>
                </div>
                <div class="panel-body">
                    <ul class="list-group list-group-flush">
                    <li class="list-group-item">First item</li>
                    <li class="list-group-item">Second item</li>
                    <li class="list-group-item">Third item</li>
                    <li class="list-group-item">Fourth item</li>
                  </ul>
                </div>
              </div>
            </Col>
            <Col sm>Test</Col>
          </Row>
        </ModalViewer>
      </React.Fragment>
    );
  }
}

export default FloorViewer;
