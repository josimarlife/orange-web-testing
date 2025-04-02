class Register {
    async validarDashboard(menu:string) {
        cy.fixture("register").then((el) => {
            cy.get(el.list_dash).contains(menu).click();
        });
    }
}
export default new Register();