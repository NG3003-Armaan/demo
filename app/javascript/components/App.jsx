import React from "react";
import stock from "../images/stock.png";
import StepBackwardOutlined from "@ant-design/icons/StepBackwardOutlined";

function App() {
  return (
    <div>
      <div className="font-bold underline mt-2 text-slate-500">App</div>
      <img src={stock} alt="logo" className="h-21 w-1/2 mt-17" />
      <div className="mt-16">
        <StepBackwardOutlined style={{ fontSize: "250%" }} />
      </div>
    </div>
  );
}

export default App;
