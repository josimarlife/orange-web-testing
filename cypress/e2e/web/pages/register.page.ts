class Register {
    async validarDashboard(menu: string) {
        cy.fixture("register").then((el) => {
            cy.get(el.list_dash).contains(menu).click();
        });
    }


    async registraDatos() {
        cy.fixture("register").then((el) => {
            cy.get(el.input_name).clear().type("Humberto");
            cy.get(el.input_midname).clear().type("cristal");
            cy.get(el.input_apellido).clear().type("Palomino");
        });
    }
}


export default new Register();