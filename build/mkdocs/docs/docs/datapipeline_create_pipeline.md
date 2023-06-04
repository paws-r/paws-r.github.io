<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>datapipeline_create_pipeline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new, empty pipeline

### Description

Creates a new, empty pipeline. Use `put_pipeline_definition` to populate
the pipeline.

### Usage

    datapipeline_create_pipeline(name, uniqueId, description, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="datapipeline_create_pipeline_:_name">name</code></td>
<td><p>[required] The name for the pipeline. You can use the same name
for multiple pipelines associated with your AWS account, because AWS
Data Pipeline assigns each pipeline a unique pipeline
identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="datapipeline_create_pipeline_:_uniqueId">uniqueId</code></td>
<td><p>[required] A unique identifier. This identifier is not the same
as the pipeline identifier assigned by AWS Data Pipeline. You are
responsible for defining the format and ensuring the uniqueness of this
identifier. You use this parameter to ensure idempotency during repeated
calls to <code>create_pipeline</code>. For example, if the first call to
<code>create_pipeline</code> does not succeed, you can pass in the same
unique identifier and pipeline name combination on a subsequent call to
<code>create_pipeline</code>. <code>create_pipeline</code> ensures that
if a pipeline already exists with the same name and unique identifier, a
new pipeline is not created. Instead, you'll receive the pipeline
identifier from the previous attempt. The uniqueness of the name and
unique identifier combination is scoped to the AWS account or IAM user
credentials.</p></td>
</tr>
<tr class="odd">
<td><code
id="datapipeline_create_pipeline_:_description">description</code></td>
<td><p>The description for the pipeline.</p></td>
</tr>
<tr class="even">
<td><code id="datapipeline_create_pipeline_:_tags">tags</code></td>
<td><p>A list of tags to associate with the pipeline at creation. Tags
let you control access to pipelines. For more information, see <a
href="https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling
User Access to Pipelines</a> in the <em>AWS Data Pipeline Developer
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      pipelineId = "string"
    )

### Request syntax

    svc$create_pipeline(
      name = "string",
      uniqueId = "string",
      description = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
