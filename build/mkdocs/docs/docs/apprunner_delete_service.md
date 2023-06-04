<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_delete_service</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete an App Runner service

### Description

Delete an App Runner service.

This is an asynchronous operation. On a successful call, you can use the
returned `OperationId` and the `list_operations` call to track the
operation's progress.

Make sure that you don't have any active VPCIngressConnections
associated with the service you want to delete.

### Usage

    apprunner_delete_service(ServiceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_delete_service_:_ServiceArn">ServiceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the App Runner
service that you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Service = list(
        ServiceName = "string",
        ServiceId = "string",
        ServiceArn = "string",
        ServiceUrl = "string",
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        UpdatedAt = as.POSIXct(
          "2015-01-01"
        ),
        DeletedAt = as.POSIXct(
          "2015-01-01"
        ),
        Status = "CREATE_FAILED"|"RUNNING"|"DELETED"|"DELETE_FAILED"|"PAUSED"|"OPERATION_IN_PROGRESS",
        SourceConfiguration = list(
          CodeRepository = list(
            RepositoryUrl = "string",
            SourceCodeVersion = list(
              Type = "BRANCH",
              Value = "string"
            ),
            CodeConfiguration = list(
              ConfigurationSource = "REPOSITORY"|"API",
              CodeConfigurationValues = list(
                Runtime = "PYTHON_3"|"NODEJS_12"|"NODEJS_14"|"CORRETTO_8"|"CORRETTO_11"|"NODEJS_16"|"GO_1"|"DOTNET_6"|"PHP_81"|"RUBY_31",
                BuildCommand = "string",
                StartCommand = "string",
                Port = "string",
                RuntimeEnvironmentVariables = list(
                  "string"
                ),
                RuntimeEnvironmentSecrets = list(
                  "string"
                )
              )
            )
          ),
          ImageRepository = list(
            ImageIdentifier = "string",
            ImageConfiguration = list(
              RuntimeEnvironmentVariables = list(
                "string"
              ),
              StartCommand = "string",
              Port = "string",
              RuntimeEnvironmentSecrets = list(
                "string"
              )
            ),
            ImageRepositoryType = "ECR"|"ECR_PUBLIC"
          ),
          AutoDeploymentsEnabled = TRUE|FALSE,
          AuthenticationConfiguration = list(
            ConnectionArn = "string",
            AccessRoleArn = "string"
          )
        ),
        InstanceConfiguration = list(
          Cpu = "string",
          Memory = "string",
          InstanceRoleArn = "string"
        ),
        EncryptionConfiguration = list(
          KmsKey = "string"
        ),
        HealthCheckConfiguration = list(
          Protocol = "TCP"|"HTTP",
          Path = "string",
          Interval = 123,
          Timeout = 123,
          HealthyThreshold = 123,
          UnhealthyThreshold = 123
        ),
        AutoScalingConfigurationSummary = list(
          AutoScalingConfigurationArn = "string",
          AutoScalingConfigurationName = "string",
          AutoScalingConfigurationRevision = 123
        ),
        NetworkConfiguration = list(
          EgressConfiguration = list(
            EgressType = "DEFAULT"|"VPC",
            VpcConnectorArn = "string"
          ),
          IngressConfiguration = list(
            IsPubliclyAccessible = TRUE|FALSE
          )
        ),
        ObservabilityConfiguration = list(
          ObservabilityEnabled = TRUE|FALSE,
          ObservabilityConfigurationArn = "string"
        )
      ),
      OperationId = "string"
    )

### Request syntax

    svc$delete_service(
      ServiceArn = "string"
    )
