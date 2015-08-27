Helper = require './spec-helper'
Projects = require '../lib/projects'
temp = require 'temp'

describe "Projects", ->
  projects = null

  beforeEach ->
    projects = new Projects()
    spyOn(projects.db, 'file').andCallFake -> Helper.settingsPath

  it "returns all projects", ->
    projects.getAll (projects) ->
      expect(projects.length).toBe 2