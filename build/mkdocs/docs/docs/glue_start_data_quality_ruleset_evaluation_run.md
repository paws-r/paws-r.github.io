<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_start_data_quality_ruleset_evaluation_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Once you have a ruleset definition (either recommended or your own), you call this operation to evaluate the ruleset against a data source (Glue table)

### Description

Once you have a ruleset definition (either recommended or your own), you
call this operation to evaluate the ruleset against a data source (Glue
table). The evaluation computes results which you can retrieve with the
`get_data_quality_result` API.

### Usage

    glue_start_data_quality_ruleset_evaluation_run(DataSource, Role,
      NumberOfWorkers, Timeout, ClientToken, AdditionalRunOptions,
      RulesetNames, AdditionalDataSources)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_start_data_quality_ruleset_evaluation_run_:_DataSource">DataSource</code></td>
<td><p>[required] The data source (Glue table) associated with this
run.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_start_data_quality_ruleset_evaluation_run_:_Role">Role</code></td>
<td><p>[required] An IAM role supplied to encrypt the results of the
run.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_start_data_quality_ruleset_evaluation_run_:_NumberOfWorkers">NumberOfWorkers</code></td>
<td><p>The number of <code>G.1X</code> workers to be used in the run.
The default is 5.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_start_data_quality_ruleset_evaluation_run_:_Timeout">Timeout</code></td>
<td><p>The timeout for a run in minutes. This is the maximum time that a
run can consume resources before it is terminated and enters
<code>TIMEOUT</code> status. The default is 2,880 minutes (48
hours).</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_start_data_quality_ruleset_evaluation_run_:_ClientToken">ClientToken</code></td>
<td><p>Used for idempotency and is recommended to be set to a random ID
(such as a UUID) to avoid creating or starting multiple instances of the
same resource.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_start_data_quality_ruleset_evaluation_run_:_AdditionalRunOptions">AdditionalRunOptions</code></td>
<td><p>Additional run options you can specify for an evaluation
run.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_start_data_quality_ruleset_evaluation_run_:_RulesetNames">RulesetNames</code></td>
<td><p>[required] A list of ruleset names.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_start_data_quality_ruleset_evaluation_run_:_AdditionalDataSources">AdditionalDataSources</code></td>
<td><p>A map of reference strings to additional data sources you can
specify for an evaluation run.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RunId = "string"
    )

### Request syntax

    svc$start_data_quality_ruleset_evaluation_run(
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
      ClientToken = "string",
      AdditionalRunOptions = list(
        CloudWatchMetricsEnabled = TRUE|FALSE,
        ResultsS3Prefix = "string"
      ),
      RulesetNames = list(
        "string"
      ),
      AdditionalDataSources = list(
        list(
          GlueTable = list(
            DatabaseName = "string",
            TableName = "string",
            CatalogId = "string",
            ConnectionName = "string",
            AdditionalOptions = list(
              "string"
            )
          )
        )
      )
    )
