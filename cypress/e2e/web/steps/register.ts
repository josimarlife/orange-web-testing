import { Given, When } from "@badeball/cypress-cucumber-preprocessor";
import register from "../pages/register";


When("presiona click en el boton {string}", (menu:string) => {
  register.validarDashboard(menu);
});
