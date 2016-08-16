

add_workflow(Study, false)
add_workflow(Sample, false)

Workflow.require_workflow "Genomics"
add_workflow(Genomics, true)

require 'rbbt/entity/gene'
require 'rbbt/entity/mutated_isoform'
require 'rbbt/entity/protein'

require 'rbbt/rest/client'

Entity::REST.setup(Gene)
Entity::REST.setup(Protein)
Entity::REST.setup(MutatedIsoform)

Entity::REST.setup(Donor)

require 'pcawg/sensitive'