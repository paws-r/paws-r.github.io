<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_start_data_quality_rule_recommendation_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a recommendation run that is used to generate rules when you don't know what rules to write

### Description

Starts a recommendation run that is used to generate rules when you
don't know what rules to write. Glue Data Quality analyzes the data and
comes up with recommendations for a potential ruleset. You can then
triage the ruleset and modify the generated ruleset to your liking.

### Usage

    glue_start_data_quality_rule_recommendation_run(DataSource, Role,
      NumberOfWorkers, Timeout, CreatedRulesetName, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_start_data_quality_rule_recommendation_run_:_DataSource">DataSource</code></td>
<td><p>[required] The data source (Glue table) associated with this
run.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_start_data_quality_rule_recommendation_run_:_Role">Role</code></td>
<td><p>[required] An IAM role supplied to encrypt the results of the
run.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_start_data_quality_rule_recommendation_run_:_NumberOfWorkers">NumberOfWorkers</code></td>
<td><p>The number of <code>G.1X</code> workers to be used in the run.
The default is 5.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_start_data_quality_rule_recommendation_run_:_Timeout">Timeout</code></td>
<td><p>The timeout for a run in minutes. This is the maximum time that a
run can consume resources before it is terminated and enters
<code>TIMEOUT</code> status. The default is 2,880 minutes (48
hours).</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_start_data_quality_rule_recommendation_run_:_CreatedRulesetName">CreatedRulesetName</code></td>
<td><p>A name for the ruleset.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_start_data_quality_rule_recommendation_run_:_ClientToken">ClientToken</code></td>
<td><p>Used for idempotency and is recommended to be set to a random ID
(such as a UUID) to avoid creating or starting multiple instances of the
same resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RunId = "string"
    )

### Request syntax

    svc$start_data_quality_rule_recommendation_run(
      DataSource = list(
        GlueTable = list(
          DatabaseName = "string",
          TableName = "string",
          CatalogId = "string",
          ConnectionName = "string",
          AdditionalOptions = list(
            "string"
          )
        )
      ),
      Role = "string",
      NumberOfWorkers = 123,
      Timeout = 123,
      CreatedRulesetName = "string",
      ClientToken = "string"
    )
