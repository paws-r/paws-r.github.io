<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>computeoptimizer_export_ecs_service_recommendations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Exports optimization recommendations for Amazon ECS services on Fargate

### Description

Exports optimization recommendations for Amazon ECS services on Fargate.

Recommendations are exported in a CSV file, and its metadata in a JSON
file, to an existing Amazon Simple Storage Service (Amazon S3) bucket
that you specify. For more information, see [Exporting
Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
in the *Compute Optimizer User Guide*.

You can only have one Amazon ECS service export job in progress per
Amazon Web Services Region.

### Usage

    computeoptimizer_export_ecs_service_recommendations(accountIds, filters,
      fieldsToExport, s3DestinationConfig, fileFormat, includeMemberAccounts)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="computeoptimizer_export_ecs_service_recommendations_:_accountIds">accountIds</code></td>
<td><p>The Amazon Web Services account IDs for the export Amazon ECS
service recommendations.</p>
<p>If your account is the management account or the delegated
administrator of an organization, use this parameter to specify the
member account you want to export recommendations to.</p>
<p>This parameter can't be specified together with the include member
accounts parameter. The parameters are mutually exclusive.</p>
<p>If this parameter or the include member accounts parameter is
omitted, the recommendations for member accounts aren't included in the
export.</p>
<p>You can specify multiple account IDs per request.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_export_ecs_service_recommendations_:_filters">filters</code></td>
<td><p>An array of objects to specify a filter that exports a more
specific set of Amazon ECS service recommendations.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_export_ecs_service_recommendations_:_fieldsToExport">fieldsToExport</code></td>
<td><p>The recommendations data to include in the export file. For more
information about the fields that can be exported, see <a
href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files">Exported
files</a> in the <em>Compute Optimizer User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_export_ecs_service_recommendations_:_s3DestinationConfig">s3DestinationConfig</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_export_ecs_service_recommendations_:_fileFormat">fileFormat</code></td>
<td><p>The format of the export file.</p>
<p>The CSV file is the only export file format currently
supported.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_export_ecs_service_recommendations_:_includeMemberAccounts">includeMemberAccounts</code></td>
<td><p>If your account is the management account or the delegated
administrator of an organization, this parameter indicates whether to
include recommendations for resources in all member accounts of the
organization.</p>
<p>The member accounts must also be opted in to Compute Optimizer, and
trusted access for Compute Optimizer must be enabled in the organization
account. For more information, see <a
href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access">Compute
Optimizer and Amazon Web Services Organizations trusted access</a> in
the <em>Compute Optimizer User Guide</em>.</p>
<p>If this parameter is omitted, recommendations for member accounts of
the organization aren't included in the export file.</p>
<p>If this parameter or the account ID parameter is omitted,
recommendations for member accounts aren't included in the
export.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      jobId = "string",
      s3Destination = list(
        bucket = "string",
        key = "string",
        metadataKey = "string"
      )
    )

### Request syntax

    svc$export_ecs_service_recommendations(
      accountIds = list(
        "string"
      ),
      filters = list(
        list(
          name = "Finding"|"FindingReasonCode",
          values = list(
            "string"
          )
        )
      ),
      fieldsToExport = list(
        "AccountId"|"ServiceArn"|"LookbackPeriodInDays"|"LastRefreshTimestamp"|"LaunchType"|"CurrentPerformanceRisk"|"CurrentServiceConfigurationMemory"|"CurrentServiceConfigurationCpu"|"CurrentServiceConfigurationTaskDefinitionArn"|"CurrentServiceConfigurationAutoScalingConfiguration"|"CurrentServiceContainerConfigurations"|"UtilizationMetricsCpuMaximum"|"UtilizationMetricsMemoryMaximum"|"Finding"|"FindingReasonCodes"|"RecommendationOptionsMemory"|"RecommendationOptionsCpu"|"RecommendationOptionsSavingsOpportunityPercentage"|"RecommendationOptionsEstimatedMonthlySavingsCurrency"|"RecommendationOptionsEstimatedMonthlySavingsValue"|"RecommendationOptionsContainerRecommendations"|"RecommendationOptionsProjectedUtilizationMetricsCpuMaximum"|"RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum"|"Tags"
      ),
      s3DestinationConfig = list(
        bucket = "string",
        keyPrefix = "string"
      ),
      fileFormat = "Csv",
      includeMemberAccounts = TRUE|FALSE
    )
