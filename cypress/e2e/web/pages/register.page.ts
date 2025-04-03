import { equal } from "assert";

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
            cy.get(el.input_id_empleado).eq(3).clear().type("1327");
            cy.get(el.input_otroid).eq(4).clear().type("11");
            cy.get(el.input_numlicencia).eq(5).clear().type("45714508");

        });
    }

    async ingresaFecha() {
        cy.fixture("register").then((el) => {
            cy.get(el.input_numlicencia).eq(8).click();
            cy.get(el.select_año).click();
            cy.get(el.select_year).contains('1989').click();
            cy.get(el.select_mes).click();
            cy.get(el.select_year).contains('April').click();
            cy.get(".oxd-calendar-date").contains('11').click();
        });

    }


}


export default new Register();