<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>computeoptimizer_export_ec2_instance_recommendations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Exports optimization recommendations for Amazon EC2 instances

### Description

Exports optimization recommendations for Amazon EC2 instances.

Recommendations are exported in a comma-separated values (.csv) file,
and its metadata in a JavaScript Object Notation (JSON) (.json) file, to
an existing Amazon Simple Storage Service (Amazon S3) bucket that you
specify. For more information, see [Exporting
Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
in the *Compute Optimizer User Guide*.

You can have only one Amazon EC2 instance export job in progress per
Amazon Web Services Region.

### Usage

    computeoptimizer_export_ec2_instance_recommendations(accountIds,
      filters, fieldsToExport, s3DestinationConfig, fileFormat,
      includeMemberAccounts, recommendationPreferences)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="computeoptimizer_export_ec2_instance_recommendations_:_accountIds">accountIds</code></td>
<td><p>The IDs of the Amazon Web Services accounts for which to export
instance recommendations.</p>
<p>If your account is the management account of an organization, use
this parameter to specify the member account for which you want to
export recommendations.</p>
<p>This parameter cannot be specified together with the include member
accounts parameter. The parameters are mutually exclusive.</p>
<p>Recommendations for member accounts are not included in the export if
this parameter, or the include member accounts parameter, is
omitted.</p>
<p>You can specify multiple account IDs per request.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_export_ec2_instance_recommendations_:_filters">filters</code></td>
<td><p>An array of objects to specify a filter that exports a more
specific set of instance recommendations.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_export_ec2_instance_recommendations_:_fieldsToExport">fieldsToExport</code></td>
<td><p>The recommendations data to include in the export file. For more
information about the fields that can be exported, see <a
href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files">Exported
files</a> in the <em>Compute Optimizer User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_export_ec2_instance_recommendations_:_s3DestinationConfig">s3DestinationConfig</code></td>
<td><p>[required] An object to specify the destination Amazon Simple
Storage Service (Amazon S3) bucket name and key prefix for the export
job.</p>
<p>You must create the destination Amazon S3 bucket for your
recommendations export before you create the export job. Compute
Optimizer does not create the S3 bucket for you. After you create the S3
bucket, ensure that it has the required permissions policy to allow
Compute Optimizer to write the export file to it. If you plan to specify
an object prefix when you create the export job, you must include the
object prefix in the policy that you add to the S3 bucket. For more
information, see <a
href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html">Amazon
S3 Bucket Policy for Compute Optimizer</a> in the <em>Compute Optimizer
User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_export_ec2_instance_recommendations_:_fileFormat">fileFormat</code></td>
<td><p>The format of the export file.</p>
<p>The only export file format currently supported is
<code>Csv</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_export_ec2_instance_recommendations_:_includeMemberAccounts">includeMemberAccounts</code></td>
<td><p>Indicates whether to include recommendations for resources in all
member accounts of the organization if your account is the management
account of an organization.</p>
<p>The member accounts must also be opted in to Compute Optimizer, and
trusted access for Compute Optimizer must be enabled in the organization
account. For more information, see <a
href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access">Compute
Optimizer and Amazon Web Services Organizations trusted access</a> in
the <em>Compute Optimizer User Guide</em>.</p>
<p>Recommendations for member accounts of the organization are not
included in the export file if this parameter is omitted.</p>
<p>Recommendations for member accounts are not included in the export if
this parameter, or the account IDs parameter, is omitted.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_export_ec2_instance_recommendations_:_recommendationPreferences">recommendationPreferences</code></td>
<td><p>An object to specify the preferences for the Amazon EC2 instance
recommendations to export.</p></td>
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

    svc$export_ec2_instance_recommendations(
      accountIds = list(
        "string"
      ),
      filters = list(
        list(
          name = "Finding"|"FindingReasonCodes"|"RecommendationSourceType"|"InferredWorkloadTypes",
          values = list(
            "string"
          )
        )
      ),
      fieldsToExport = list(
        "AccountId"|"InstanceArn"|"InstanceName"|"Finding"|"FindingReasonCodes"|"LookbackPeriodInDays"|"CurrentInstanceType"|"UtilizationMetricsCpuMaximum"|"UtilizationMetricsMemoryMaximum"|"UtilizationMetricsEbsReadOpsPerSecondMaximum"|"UtilizationMetricsEbsWriteOpsPerSecondMaximum"|"UtilizationMetricsEbsReadBytesPerSecondMaximum"|"UtilizationMetricsEbsWriteBytesPerSecondMaximum"|"UtilizationMetricsDiskReadOpsPerSecondMaximum"|"UtilizationMetricsDiskWriteOpsPerSecondMaximum"|"UtilizationMetricsDiskReadBytesPerSecondMaximum"|"UtilizationMetricsDiskWriteBytesPerSecondMaximum"|"UtilizationMetricsNetworkInBytesPerSecondMaximum"|"UtilizationMetricsNetworkOutBytesPerSecondMaximum"|"UtilizationMetricsNetworkPacketsInPerSecondMaximum"|"UtilizationMetricsNetworkPacketsOutPerSecondMaximum"|"CurrentOnDemandPrice"|"CurrentStandardOneYearNoUpfrontReservedPrice"|"CurrentStandardThreeYearNoUpfrontReservedPrice"|"CurrentVCpus"|"CurrentMemory"|"CurrentStorage"|"CurrentNetwork"|"RecommendationOptionsInstanceType"|"RecommendationOptionsProjectedUtilizationMetricsCpuMaximum"|"RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum"|"RecommendationOptionsPlatformDifferences"|"RecommendationOptionsPerformanceRisk"|"RecommendationOptionsVcpus"|"RecommendationOptionsMemory"|"RecommendationOptionsStorage"|"RecommendationOptionsNetwork"|"RecommendationOptionsOnDemandPrice"|"RecommendationOptionsStandardOneYearNoUpfrontReservedPrice"|"RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice"|"RecommendationsSourcesRecommendationSourceArn"|"RecommendationsSourcesRecommendationSourceType"|"LastRefreshTimestamp"|"CurrentPerformanceRisk"|"RecommendationOptionsSavingsOpportunityPercentage"|"RecommendationOptionsEstimatedMonthlySavingsCurrency"|"RecommendationOptionsEstimatedMonthlySavingsValue"|"EffectiveRecommendationPreferencesCpuVendorArchitectures"|"EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics"|"EffectiveRecommendationPreferencesInferredWorkloadTypes"|"InferredWorkloadTypes"|"RecommendationOptionsMigrationEffort"|"EffectiveRecommendationPreferencesExternalMetricsSource"|"InstanceState"|"Tags"|"ExternalMetricStatusCode"|"ExternalMetricStatusReason"
      ),
      s3DestinationConfig = list(
        bucket = "string",
        keyPrefix = "string"
      ),
      fileFormat = "Csv",
      includeMemberAccounts = TRUE|FALSE,
      recommendationPreferences = list(
        cpuVendorArchitectures = list(
          "AWS_ARM64"|"CURRENT"
        )
      )
    )
