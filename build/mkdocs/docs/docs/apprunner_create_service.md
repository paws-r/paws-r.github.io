<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_create_service</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create an App Runner service

### Description

Create an App Runner service. After the service is created, the action
also automatically starts a deployment.

This is an asynchronous operation. On a successful call, you can use the
returned `OperationId` and the `list_operations` call to track the
operation's progress.

### Usage

    apprunner_create_service(ServiceName, SourceConfiguration,
      InstanceConfiguration, Tags, EncryptionConfiguration,
      HealthCheckConfiguration, AutoScalingConfigurationArn,
      NetworkConfiguration, ObservabilityConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_create_service_:_ServiceName">ServiceName</code></td>
<td><p>[required] A name for the App Runner service. It must be unique
across all the running App Runner services in your Amazon Web Services
account in the Amazon Web Services Region.</p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_create_service_:_SourceConfiguration">SourceConfiguration</code></td>
<td><p>[required] The source to deploy to the App Runner service. It can
be a code or an image repository.</p></td>
</tr>
<tr class="odd">
<td><code
id="apprunner_create_service_:_InstanceConfiguration">InstanceConfiguration</code></td>
<td><p>The runtime configuration of instances (scaling units) of your
service.</p></td>
</tr>
<tr class="even">
<td><code id="apprunner_create_service_:_Tags">Tags</code></td>
<td><p>An optional list of metadata items that you can associate with
the App Runner service resource. A tag is a key-value pair.</p></td>
</tr>
<tr class="odd">
<td><code
id="apprunner_create_service_:_EncryptionConfiguration">EncryptionConfiguration</code></td>
<td><p>An optional custom encryption key that App Runner uses to encrypt
the copy of your source repository that it maintains and your service
logs. By default, App Runner uses an Amazon Web Services managed
key.</p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_create_service_:_HealthCheckConfiguration">HealthCheckConfiguration</code></td>
<td><p>The settings for the health check that App Runner performs to
monitor the health of the App Runner service.</p></td>
</tr>
<tr class="odd">
<td><code
id="apprunner_create_service_:_AutoScalingConfigurationArn">AutoScalingConfigurationArn</code></td>
<td><p>The Amazon Resource Name (ARN) of an App Runner automatic scaling
configuration resource that you want to associate with your service. If
not provided, App Runner associates the latest revision of a default
auto scaling configuration.</p>
<p>Specify an ARN with a name and a revision number to associate that
revision. For example:
<code>arn:aws:apprunner:us-east-1:123456789012:autoscalingconfiguration/high-availability/3</code></p>
<p>Specify just the name to associate the latest revision. For example:
<code>arn:aws:apprunner:us-east-1:123456789012:autoscalingconfiguration/high-availability</code></p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_create_service_:_NetworkConfiguration">NetworkConfiguration</code></td>
<td><p>Configuration settings related to network traffic of the web
application that the App Runner service runs.</p></td>
</tr>
<tr class="odd">
<td><code
id="apprunner_create_service_:_ObservabilityConfiguration">ObservabilityConfiguration</code></td>
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

    svc$create_service(
      ServiceName = "string",
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
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
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
      AutoScalingConfigurationArn = "string",
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
