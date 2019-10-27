import React from "react";
import ButtonToolbar from "react-bootstrap/ButtonToolbar";
import Button from "react-bootstrap/Button";
import Container from "react-bootstrap/Container";
import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";

const ModalViewer = ({ handleClose, show, children }) => {
  const showHideClassName = show ? "modal display-block" : "modal display-none";

  return (
    <div className={showHideClassName}>
      <section className="modal-main">
        {children}
        <ButtonToolbar>
          <Button onClick={handleClose} variant="outline-primary">Close</Button>
        </ButtonToolbar>
      </section>
    </div>
  );
};

export default ModalViewer;
