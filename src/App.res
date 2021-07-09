module App = {
  @react.component
  let make = () => {
    <div> <p> {React.string("Perhaps")} </p> </div>
  }
}

switch ReactDOM.querySelector("#root") {
  | Some(root) => ReactDOM.render(<App />, root)
  | None => ()
}
