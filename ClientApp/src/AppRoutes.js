import { Counter } from "./components/Counter";
import { FetchData } from "./components/FetchData";
import { FetchOrganisations } from "./components/FetchOrganisations";
import { FetchEmployees } from "./components/FetchEmployees";
import { Home } from "./components/Home";

const AppRoutes = [
  {
    index: true,
    element: <Home />
  },
  {
    path: '/counter',
    element: <Counter />
  },
  {
    path: '/fetch-data',
    element: <FetchData />
  },
  {
    path: '/fetch-organisations',
    element: <FetchOrganisations />
  },
  {
    path: '/fetch-employees',
    element: <FetchEmployees />
  }
];

export default AppRoutes;
