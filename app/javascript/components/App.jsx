import React from "react";
import { BrowserRouter, Route, Routes } from "react-router-dom";
import Login from "./Login";
import Dashboard from "./Dashboard";
import AddNew from "./AddNew";

function App() {
  return (
    <BrowserRouter>
    <Routes>
        <Route path="/" element={<Login />} />
        <Route path="/index" element={<Dashboard />} />
        <Route path="/add_record" element={<AddNew />} />
    </Routes>
    </BrowserRouter>
  );
}

export default App;
