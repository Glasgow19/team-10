import React from "react";
import Navbar from "react-bootstrap/Navbar";
import Container from "react-bootstrap/Container";
import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";
import Image from "react-bootstrap/Image";
import Logo from "../../assets/images/gsc_logo.svg";
import MapImage from "../../assets/images/new_map.png";
import PropTypes from "prop-types";
import ImageMapper from 'react-image-mapper';

class FloorViewer extends React.Component {
  clickedOutside(evt) {
		const coords = { x: evt.nativeEvent.layerX, y: evt.nativeEvent.layerY };
		this.setState({
			msg: `You clicked on the image at coords ${JSON.stringify(coords)} !`
		});
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
      areas: [
        {
          name: "3",
          shape: "poly",
          coords: [607,148,943,177,1452,201,1792,215,2136,220,2640,225,2624,249,2642,252,2587,334,2565,363,2515,358,2375,519,2025,548,1648,564,1402,567,1020,556,583,519,602,490,588,490,617,442,509,434,522,405,509,400,588,307,514,297,530,273,517,270],
          fillColor: "rgba(170, 17, 53, 0.5)"
        },
        {
          name: "2",
          shape: "poly",
          coords: [498,768,599,779,641,728,840,731,938,736,1097,744,1529,744,2165,750,2602,758,2584,784,2602,784,2515,917,2446,1017,2396,1075,2033,1097,1757,1110,1426,1110,949,1073,766,1038,615,1001,472,948,403,911,416,893,403,887],
          fillColor: "rgba(27, 24, 51, 0.5)"
        },
        {
          name: "1",
          shape: "poly",
          coords: [323,1319,443,1181,665,1195,943,1197,1296,1200,1670,1203,2051,1219,2165,1224,2364,1232,2417,1232,2512,1250,2496,1272,2515,1277,2481,1332,2496,1330,2544,1314,2618,1303,2693,1314,2751,1346,2783,1412,2777,1423,2783,1436,2754,1502,2693,1542,2632,1566,2555,1576,2478,1571,2414,1552,2380,1521,2356,1526,2308,1600,1773,1581,1338,1566,999,1534,729,1497,739,1470,726,1468,753,1423,591,1417,559,1452,466,1423,395,1391,323,1346,339,1327],
          fillColor: "rgba(9, 69, 71, 0.5)"
        }
      ]
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
        <Container fluid>
          <Row className="text-center">
            <Col>
              <h1>Floor </h1>
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
