/**
 * @file SurrealQL grammar for tree-sitter
 * @author Brage Ingebrigtsen <brageringebrigtsen@gmail.com>
 * @license MIT
 */

/// <reference types="tree-sitter-cli/dsl" />
// @ts-check

module.exports = grammar({
  name: "surrealql",

  rules: {
    // TODO: add the actual grammar rules
    source_file: ($) => "hello",
  },
});
