import { Given, When } from "@badeball/cypress-cucumber-preprocessor";
import register from "../pages/register.page";


When("presiona click en el boton {string}", (menu:string) => {
  register.validarDashboard(menu);
});

When("ingresa datos personales principales satisfactoriamente", () => {
    register.registraDatos();
  });
