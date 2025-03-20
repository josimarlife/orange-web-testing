class LoginPage {
  async loginCredential() {
    cy.fixture("login").then((el) => {
      cy.get(el.input_username).type("Admin");
      cy.get(el.input_password).type("admin123");
      cy.get(el.btn_login).click();
    });
  }
}
export default new LoginPage();
