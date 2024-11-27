package tree_sitter_surrealql_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_surrealql "github.com:skyppex/tree-sitter-surrealdb.git/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_surrealql.Language())
	if language == nil {
		t.Errorf("Error loading SurrealQL grammar")
	}
}
