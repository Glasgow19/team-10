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
		const coords = { x: evt.nativeEvent.layerX, y: evt.nativeEvent.layerY };
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
          name: "1",
          shape: "poly",
          coords: [138,368,151,344,135,339,252,183,511,209,840,230,795,392,702,389,700,378,511,357,461,397,236,381,172,373],
          fillColor: "rgba(170, 17, 53, 0.5)"
        },
        {
          name: "2",
          shape: "poly",
          coords: [851,230,806,394,981,363,986,373,1413,413,1606,384,1627,265,1179,246],
          fillColor: "rgba(170, 17, 53, 0.5)"
        },
        {
          name: "3",
          shape: "poly",
          coords: [1951,458,2112,503,2258,490,2266,513,2308,445,2295,439,2303,421,2239,384,2247,376,2767,453,2870,310,2846,310,2865,283,2253,275,1638,267,1617,381,1821,368,1847,386,1932,336,2027,402],
          fillColor: "rgba(170, 17, 53, 0.5)"
        },
        {
          name: "4",
          shape: "poly",
          coords: [655,400,665,490,798,468,798,400,692,397],
          fillColor: "rgba(170, 17, 53, 0.5)"
        },
        {
          name: "5",
          shape: "poly",
          coords: [543,540,824,553,1002,466,975,373,806,405,806,474,655,498,652,453],
          fillColor: "rgba(170, 17, 53, 0.5)"
        },
        {
          name: "6",
          shape: "poly",
          coords: [991,384,1012,471,824,558,774,672,774,696,959,704,1126,707,1171,574,1171,439,1251,408],
          fillColor: "rgba(170, 17, 53, 0.5)"
        },
        {
          name: "7",
          shape: "poly",
          coords: [1182,445,1182,577,1328,577,1320,691,1320,715,1635,712,1630,683,1577,540,1614,529,1593,455,1550,455,1561,402,1405,421,1264,408],
          fillColor: "rgba(170, 17, 53, 0.5)"
        },
        {
          name: "8",
          shape: "poly",
          coords: [286,537,641,551,583,654,580,683,225,654,244,627,223,625],
          fillColor: "rgba(170, 17, 53, 0.5)"
        },
        {
          name: "9",
          shape: "poly",
          coords: [649,553,594,656,596,685,758,696,766,672,811,561],
          fillColor: "rgba(170, 17, 53, 0.5)"
        },
        {
          name: "10",
          shape: "poly",
          coords: [1179,585,1320,585,1312,683,1312,715,1142,712,1142,680],
          fillColor: "rgba(170, 17, 53, 0.5)"
        },
        {
          name: "11",
          shape: "poly",
          coords: [1572,400,1558,445,1601,445,1622,524,1625,553,1784,543,1784,516,1765,474,1858,466,1929,458,1815,378,1617,392],
          fillColor: "rgba(170, 17, 53, 0.5)"
        },
        {
          name: "12",
          shape: "poly",
          coords: [1852,394,1929,347,2014,405,1940,453],
          fillColor: "rgba(170, 17, 53, 0.5)"
        },
        {
          name: "13",
          shape: "poly",
          coords: [1794,513,1797,543,1871,580,1890,566,1855,625,1860,654,1935,696,2168,683,2356,667,2520,656,2587,580,2557,580,2581,551,2274,574,2271,582,2123,606,2107,511,1943,466,1778,482],
          fillColor: "rgba(170, 17, 53, 0.5)"
        },
        {
          name: "14",
          shape: "poly",
          coords: [2117,511,2255,498,2263,574,2128,596],
          fillColor: "rgba(170, 17, 53, 0.5)"
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
