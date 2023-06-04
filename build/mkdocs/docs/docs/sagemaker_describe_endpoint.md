<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the description of an endpoint

### Description

Returns the description of an endpoint.

### Usage

    sagemaker_describe_endpoint(EndpointName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_endpoint_:_EndpointName">EndpointName</code></td>
<td><p>[required] The name of the endpoint.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EndpointName = "string",
      EndpointArn = "string",
      EndpointConfigName = "string",
      ProductionVariants = list(
        list(
          VariantName = "string",
          DeployedImages = list(
            list(
              SpecifiedImage = "string",
              ResolvedImage = "string",
              ResolutionTime = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          CurrentWeight = 123.0,
          DesiredWeight = 123.0,
          CurrentInstanceCount = 123,
          DesiredInstanceCount = 123,
          VariantStatus = list(
            list(
              Status = "Creating"|"Updating"|"Deleting"|"ActivatingTraffic"|"Baking",
              StatusMessage = "string",
              StartTime = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          CurrentServerlessConfig = list(
            MemorySizeInMB = 123,
            MaxConcurrency = 123,
            ProvisionedConcurrency = 123
          ),
          DesiredServerlessConfig = list(
            MemorySizeInMB = 123,
            MaxConcurrency = 123,
            ProvisionedConcurrency = 123
          )
        )
      ),
      DataCaptureConfig = list(
        EnableCapture = TRUE|FALSE,
        CaptureStatus = "Started"|"Stopped",
        CurrentSamplingPercentage = 123,
        DestinationS3Uri = "string",
        KmsKeyId = "string"
      ),
      EndpointStatus = "OutOfService"|"Creating"|"Updating"|"SystemUpdating"|"RollingBack"|"InService"|"Deleting"|"Failed",
      FailureReason = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      LastDeploymentConfig = list(
        BlueGreenUpdatePolicy = list(
          TrafficRoutingConfiguration = list(
            Type = "ALL_AT_ONCE"|"CANARY"|"LINEAR",
            WaitIntervalInSeconds = 123,
            CanarySize = list(
              Type = "INSTANCE_COUNT"|"CAPACITY_PERCENT",
              Value = 123
            ),
            LinearStepSize = list(
              Type = "INSTANCE_COUNT"|"CAPACITY_PERCENT",
              Value = 123
            )
          ),
          TerminationWaitInSeconds = 123,
          MaximumExecutionTimeoutInSeconds = 123
        ),
        AutoRollbackConfiguration = list(
          Alarms = list(
            list(
              AlarmName = "string"
            )
          )
        )
      ),
      AsyncInferenceConfig = list(
        ClientConfig = list(
          MaxConcurrentInvocationsPerInstance = 123
        ),
        OutputConfig = list(
          KmsKeyId = "string",
          S3OutputPath = "string",
          NotificationConfig = list(
            SuccessTopic = "string",
            ErrorTopic = "string",
            IncludeInferenceResponseIn = list(
              "SUCCESS_NOTIFICATION_TOPIC"|"ERROR_NOTIFICATION_TOPIC"
            )
          ),
          S3FailurePath = "string"
        )
      ),
      PendingDeploymentSummary = list(
        EndpointConfigName = "string",
        ProductionVariants = list(
          list(
            VariantName = "string",
            DeployedImages = list(
              list(
                SpecifiedImage = "string",
                ResolvedImage = "string",
                ResolutionTime = as.POSIXct(
                  "2015-01-01"
                )
              )
            ),
            CurrentWeight = 123.0,
            DesiredWeight = 123.0,
            CurrentInstanceCount = 123,
            DesiredInstanceCount = 123,
            InstanceType = "ml.t2.medium"|"ml.t2.large"|"ml.t2.xlarge"|"ml.t2.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.12xlarge"|"ml.m5d.24xlarge"|"ml.c4.large"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5d.large"|"ml.c5d.xlarge"|"ml.c5d.2xlarge"|"ml.c5d.4xlarge"|"ml.c5d.9xlarge"|"ml.c5d.18xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.12xlarge"|"ml.r5.24xlarge"|"ml.r5d.large"|"ml.r5d.xlarge"|"ml.r5d.2xlarge"|"ml.r5d.4xlarge"|"ml.r5d.12xlarge"|"ml.r5d.24xlarge"|"ml.inf1.xlarge"|"ml.inf1.2xlarge"|"ml.inf1.6xlarge"|"ml.inf1.24xlarge"|"ml.c6i.large"|"ml.c6i.xlarge"|"ml.c6i.2xlarge"|"ml.c6i.4xlarge"|"ml.c6i.8xlarge"|"ml.c6i.12xlarge"|"ml.c6i.16xlarge"|"ml.c6i.24xlarge"|"ml.c6i.32xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.12xlarge"|"ml.g5.16xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.p4d.24xlarge"|"ml.c7g.large"|"ml.c7g.xlarge"|"ml.c7g.2xlarge"|"ml.c7g.4xlarge"|"ml.c7g.8xlarge"|"ml.c7g.12xlarge"|"ml.c7g.16xlarge"|"ml.m6g.large"|"ml.m6g.xlarge"|"ml.m6g.2xlarge"|"ml.m6g.4xlarge"|"ml.m6g.8xlarge"|"ml.m6g.12xlarge"|"ml.m6g.16xlarge"|"ml.m6gd.large"|"ml.m6gd.xlarge"|"ml.m6gd.2xlarge"|"ml.m6gd.4xlarge"|"ml.m6gd.8xlarge"|"ml.m6gd.12xlarge"|"ml.m6gd.16xlarge"|"ml.c6g.large"|"ml.c6g.xlarge"|"ml.c6g.2xlarge"|"ml.c6g.4xlarge"|"ml.c6g.8xlarge"|"ml.c6g.12xlarge"|"ml.c6g.16xlarge"|"ml.c6gd.large"|"ml.c6gd.xlarge"|"ml.c6gd.2xlarge"|"ml.c6gd.4xlarge"|"ml.c6gd.8xlarge"|"ml.c6gd.12xlarge"|"ml.c6gd.16xlarge"|"ml.c6gn.large"|"ml.c6gn.xlarge"|"ml.c6gn.2xlarge"|"ml.c6gn.4xlarge"|"ml.c6gn.8xlarge"|"ml.c6gn.12xlarge"|"ml.c6gn.16xlarge"|"ml.r6g.large"|"ml.r6g.xlarge"|"ml.r6g.2xlarge"|"ml.r6g.4xlarge"|"ml.r6g.8xlarge"|"ml.r6g.12xlarge"|"ml.r6g.16xlarge"|"ml.r6gd.large"|"ml.r6gd.xlarge"|"ml.r6gd.2xlarge"|"ml.r6gd.4xlarge"|"ml.r6gd.8xlarge"|"ml.r6gd.12xlarge"|"ml.r6gd.16xlarge"|"ml.p4de.24xlarge"|"ml.trn1.2xlarge"|"ml.trn1.32xlarge"|"ml.inf2.xlarge"|"ml.inf2.8xlarge"|"ml.inf2.24xlarge"|"ml.inf2.48xlarge",
            AcceleratorType = "ml.eia1.medium"|"ml.eia1.large"|"ml.eia1.xlarge"|"ml.eia2.medium"|"ml.eia2.large"|"ml.eia2.xlarge",
            VariantStatus = list(
              list(
                Status = "Creating"|"Updating"|"Deleting"|"ActivatingTraffic"|"Baking",
                StatusMessage = "string",
                StartTime = as.POSIXct(
                  "2015-01-01"
                )
              )
            ),
            CurrentServerlessConfig = list(
              MemorySizeInMB = 123,
              MaxConcurrency = 123,
              ProvisionedConcurrency = 123
            ),
            DesiredServerlessConfig = list(
              MemorySizeInMB = 123,
              MaxConcurrency = 123,
              ProvisionedConcurrency = 123
            )
          )
        ),
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        ShadowProductionVariants = list(
          list(
            VariantName = "string",
            DeployedImages = list(
              list(
                SpecifiedImage = "string",
                ResolvedImage = "string",
                ResolutionTime = as.POSIXct(
                  "2015-01-01"
                )
              )
            ),
            CurrentWeight = 123.0,
            DesiredWeight = 123.0,
            CurrentInstanceCount = 123,
            DesiredInstanceCount = 123,
            InstanceType = "ml.t2.medium"|"ml.t2.large"|"ml.t2.xlarge"|"ml.t2.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.12xlarge"|"ml.m5d.24xlarge"|"ml.c4.large"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5d.large"|"ml.c5d.xlarge"|"ml.c5d.2xlarge"|"ml.c5d.4xlarge"|"ml.c5d.9xlarge"|"ml.c5d.18xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.12xlarge"|"ml.r5.24xlarge"|"ml.r5d.large"|"ml.r5d.xlarge"|"ml.r5d.2xlarge"|"ml.r5d.4xlarge"|"ml.r5d.12xlarge"|"ml.r5d.24xlarge"|"ml.inf1.xlarge"|"ml.inf1.2xlarge"|"ml.inf1.6xlarge"|"ml.inf1.24xlarge"|"ml.c6i.large"|"ml.c6i.xlarge"|"ml.c6i.2xlarge"|"ml.c6i.4xlarge"|"ml.c6i.8xlarge"|"ml.c6i.12xlarge"|"ml.c6i.16xlarge"|"ml.c6i.24xlarge"|"ml.c6i.32xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.12xlarge"|"ml.g5.16xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.p4d.24xlarge"|"ml.c7g.large"|"ml.c7g.xlarge"|"ml.c7g.2xlarge"|"ml.c7g.4xlarge"|"ml.c7g.8xlarge"|"ml.c7g.12xlarge"|"ml.c7g.16xlarge"|"ml.m6g.large"|"ml.m6g.xlarge"|"ml.m6g.2xlarge"|"ml.m6g.4xlarge"|"ml.m6g.8xlarge"|"ml.m6g.12xlarge"|"ml.m6g.16xlarge"|"ml.m6gd.large"|"ml.m6gd.xlarge"|"ml.m6gd.2xlarge"|"ml.m6gd.4xlarge"|"ml.m6gd.8xlarge"|"ml.m6gd.12xlarge"|"ml.m6gd.16xlarge"|"ml.c6g.large"|"ml.c6g.xlarge"|"ml.c6g.2xlarge"|"ml.c6g.4xlarge"|"ml.c6g.8xlarge"|"ml.c6g.12xlarge"|"ml.c6g.16xlarge"|"ml.c6gd.large"|"ml.c6gd.xlarge"|"ml.c6gd.2xlarge"|"ml.c6gd.4xlarge"|"ml.c6gd.8xlarge"|"ml.c6gd.12xlarge"|"ml.c6gd.16xlarge"|"ml.c6gn.large"|"ml.c6gn.xlarge"|"ml.c6gn.2xlarge"|"ml.c6gn.4xlarge"|"ml.c6gn.8xlarge"|"ml.c6gn.12xlarge"|"ml.c6gn.16xlarge"|"ml.r6g.large"|"ml.r6g.xlarge"|"ml.r6g.2xlarge"|"ml.r6g.4xlarge"|"ml.r6g.8xlarge"|"ml.r6g.12xlarge"|"ml.r6g.16xlarge"|"ml.r6gd.large"|"ml.r6gd.xlarge"|"ml.r6gd.2xlarge"|"ml.r6gd.4xlarge"|"ml.r6gd.8xlarge"|"ml.r6gd.12xlarge"|"ml.r6gd.16xlarge"|"ml.p4de.24xlarge"|"ml.trn1.2xlarge"|"ml.trn1.32xlarge"|"ml.inf2.xlarge"|"ml.inf2.8xlarge"|"ml.inf2.24xlarge"|"ml.inf2.48xlarge",
            AcceleratorType = "ml.eia1.medium"|"ml.eia1.large"|"ml.eia1.xlarge"|"ml.eia2.medium"|"ml.eia2.large"|"ml.eia2.xlarge",
            VariantStatus = list(
              list(
                Status = "Creating"|"Updating"|"Deleting"|"ActivatingTraffic"|"Baking",
                StatusMessage = "string",
                StartTime = as.POSIXct(
                  "2015-01-01"
                )
              )
            ),
            CurrentServerlessConfig = list(
              MemorySizeInMB = 123,
              MaxConcurrency = 123,
              ProvisionedConcurrency = 123
            ),
            DesiredServerlessConfig = list(
              MemorySizeInMB = 123,
              MaxConcurrency = 123,
              ProvisionedConcurrency = 123
            )
          )
        )
      ),
      ExplainerConfig = list(
        ClarifyExplainerConfig = list(
          EnableExplanations = "string",
          InferenceConfig = list(
            FeaturesAttribute = "string",
            ContentTemplate = "string",
            MaxRecordCount = 123,
            MaxPayloadInMB = 123,
            ProbabilityIndex = 123,
            LabelIndex = 123,
            ProbabilityAttribute = "string",
            LabelAttribute = "string",
            LabelHeaders = list(
              "string"
            ),
            FeatureHeaders = list(
              "string"
            ),
            FeatureTypes = list(
              "numerical"|"categorical"|"text"
            )
          ),
          ShapConfig = list(
            ShapBaselineConfig = list(
              MimeType = "string",
              ShapBaseline = "string",
              ShapBaselineUri = "string"
            ),
            NumberOfSamples = 123,
            UseLogit = TRUE|FALSE,
            Seed = 123,
            TextConfig = list(
              Language = "af"|"sq"|"ar"|"hy"|"eu"|"bn"|"bg"|"ca"|"zh"|"hr"|"cs"|"da"|"nl"|"en"|"et"|"fi"|"fr"|"de"|"el"|"gu"|"he"|"hi"|"hu"|"is"|"id"|"ga"|"it"|"kn"|"ky"|"lv"|"lt"|"lb"|"mk"|"ml"|"mr"|"ne"|"nb"|"fa"|"pl"|"pt"|"ro"|"ru"|"sa"|"sr"|"tn"|"si"|"sk"|"sl"|"es"|"sv"|"tl"|"ta"|"tt"|"te"|"tr"|"uk"|"ur"|"yo"|"lij"|"xx",
              Granularity = "token"|"sentence"|"paragraph"
            )
          )
        )
      ),
      ShadowProductionVariants = list(
        list(
          VariantName = "string",
          DeployedImages = list(
            list(
              SpecifiedImage = "string",
              ResolvedImage = "string",
              ResolutionTime = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          CurrentWeight = 123.0,
          DesiredWeight = 123.0,
          CurrentInstanceCount = 123,
          DesiredInstanceCount = 123,
          VariantStatus = list(
            list(
              Status = "Creating"|"Updating"|"Deleting"|"ActivatingTraffic"|"Baking",
              StatusMessage = "string",
              StartTime = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          CurrentServerlessConfig = list(
            MemorySizeInMB = 123,
            MaxConcurrency = 123,
            ProvisionedConcurrency = 123
          ),
          DesiredServerlessConfig = list(
            MemorySizeInMB = 123,
            MaxConcurrency = 123,
            ProvisionedConcurrency = 123
          )
        )
      )
    )

### Request syntax

    svc$describe_endpoint(
      EndpointName = "string"
    )
