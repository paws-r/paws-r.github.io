<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_start_cost_estimation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts the creation of an estimate of the monthly cost to analyze your Amazon Web Services resources

### Description

Starts the creation of an estimate of the monthly cost to analyze your
Amazon Web Services resources.

### Usage

    devopsguru_start_cost_estimation(ResourceCollection, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="devopsguru_start_cost_estimation_:_ResourceCollection">ResourceCollection</code></td>
<td><p>[required] The collection of Amazon Web Services resources used
to create a monthly DevOps Guru cost estimate.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_start_cost_estimation_:_ClientToken">ClientToken</code></td>
<td><p>The idempotency token used to identify each cost estimate
request.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$start_cost_estimation(
      ResourceCollection = list(
        CloudFormation = list(
          StackNames = list(
            "string"
          )
        ),
        Tags = list(
          list(
            AppBoundaryKey = "string",
            TagValues = list(
              "string"
            )
          )
        )
      ),
      ClientToken = "string"
    )
