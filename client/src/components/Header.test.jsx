import {render, screen} from "@testing-library/react"; //standard line to add 
import Header from "./Header";
import {expect} from "vitest";

//3 testing steps
//set-up - render react component
//act - depends i.e user is doing something, but not always
//assert - this is where we use expect function to verify something is true

test("Testing to see if header component renders", () => {
    render(<Header/>)
    expect(screen.getByText("Raw Stories")).toBeDefined();
})
