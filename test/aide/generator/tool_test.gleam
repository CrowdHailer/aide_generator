import aide/generator
import aide/tool
import birdie
import oas/json_schema

pub fn simple_object_test() {
  let tools = [
    tool.Spec(
      name: "flip",
      title: "Flip",
      description: "Flip a boolean",
      input: [json_schema.field("value", json_schema.boolean())],
      output: [
        json_schema.field("output", json_schema.boolean()),
      ],
    ),
  ]
  let output = generator.generate(tools)
  birdie.snap(output, "simple_object_test")
}
