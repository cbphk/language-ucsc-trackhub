# If you want an example of language specs, check out:
# https://github.com/atom/language-javascript/blob/master/spec/javascript-spec.coffee

describe "UCSC Track Hub grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-ucsc-trackhub")

    runs ->
      grammar = atom.syntax.grammarForScopeName("source.ucsc-trackhub")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.ucsc-trackhub"
