<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_update_service</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update an App Runner service

### Description

Update an App Runner service. You can update the source configuration
and instance configuration of the service. You can also update the ARN
of the auto scaling configuration resource that's associated with the
service. However, you can't change the name or the encryption
configuration of the service. These can be set only when you create the
service.

To update the tags applied to your service, use the separate actions
`tag_resource` and `untag_resource`.

This is an asynchronous operation. On a successful call, you can use the
returned `OperationId` and the `list_operations` call to track the
operation's progress.

### Usage

    apprunner_update_service(ServiceArn, SourceConfiguration,
      InstanceConfiguration, AutoScalingConfigurationArn,
      HealthCheckConfiguration, NetworkConfiguration,
      ObservabilityConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_update_service_:_ServiceArn">ServiceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the App Runner
service that you want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_update_service_:_SourceConfiguration">SourceConfiguration</code></td>
<td><p>The source configuration to apply to the App Runner service.</p>
<p>You can change the configuration of the code or image repository that
the service uses. However, you can't switch from code to image or the
other way around. This means that you must provide the same structure
member of <code>SourceConfiguration</code> that you originally included
when you created the service. Specifically, you can include either
<code>CodeRepository</code> or <code>ImageRepository</code>. To update
the source configuration, set the values to members of the structure
that you include.</p></td>
</tr>
<tr class="odd">
<td><code
id="apprunner_update_service_:_InstanceConfiguration">InstanceConfiguration</code></td>
<td><p>The runtime configuration to apply to instances (scaling units)
of your service.</p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_update_service_:_AutoScalingConfigurationArn">AutoScalingConfigurationArn</code></td>
<td><p>The Amazon Resource Name (ARN) of an App Runner automatic scaling
configuration resource that you want to associate with the App Runner
service.</p></td>
</tr>
<tr class="odd">
<td><code
id="apprunner_update_service_:_HealthCheckConfiguration">HealthCheckConfiguration</code></td>
<td><p>The settings for the health check that App Runner performs to
monitor the health of the App Runner service.</p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_update_service_:_NetworkConfiguration">NetworkConfiguration</code></td>
<td><p>Configuration settings related to network traffic of the web
application that the App Runner service runs.</p></td>
</tr>
<tr class="odd">
<td><code
id="apprunner_update_service_:_ObservabilityConfiguration">ObservabilityConfiguration</code></td>
<td><p>The observability configuration of your service.</p></td>
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

    svc$update_service(
      ServiceArn = "string",
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
      AutoScalingConfigurationArn = "string",
      HealthCheckConfiguration = list(
        Protocol = "TCP"|"HTTP",
        Path = "string",
        Interval = 123,
        Timeout = 123,
        HealthyThreshold = 123,
        UnhealthyThreshold = 123
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
    )
