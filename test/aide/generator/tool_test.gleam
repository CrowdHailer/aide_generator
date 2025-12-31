import aide/generator
import aide/tool
import birdie
import castor

pub fn simple_object_test() {
  let tools = [
    tool.Spec(
      name: "flip",
      title: "Flip",
      description: "Flip a boolean",
      input: [castor.field("value", castor.boolean())],
      output: [
        castor.field("output", castor.boolean()),
      ],
    ),
  ]
  let output = generator.generate(tools)
  birdie.snap(output, "simple_object_test")
}

pub fn empty_input_test() {
  let tools = [
    tool.Spec(
      name: "random",
      title: "Random",
      description: "Get a random value",
      input: [],
      output: [
        castor.field("output", castor.integer()),
      ],
    ),
  ]
  let output = generator.generate(tools)
  birdie.snap(output, "empty_input_test")
}
