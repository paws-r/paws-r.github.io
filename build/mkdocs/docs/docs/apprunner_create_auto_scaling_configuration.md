<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_create_auto_scaling_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create an App Runner automatic scaling configuration resource

### Description

Create an App Runner automatic scaling configuration resource. App
Runner requires this resource when you create or update App Runner
services and you require non-default auto scaling settings. You can
share an auto scaling configuration across multiple services.

Create multiple revisions of a configuration by calling this action
multiple times using the same `AutoScalingConfigurationName`. The call
returns incremental `AutoScalingConfigurationRevision` values. When you
create a service and configure an auto scaling configuration resource,
the service uses the latest active revision of the auto scaling
configuration by default. You can optionally configure the service to
use a specific revision.

Configure a higher `MinSize` to increase the spread of your App Runner
service over more Availability Zones in the Amazon Web Services Region.
The tradeoff is a higher minimal cost.

Configure a lower `MaxSize` to control your cost. The tradeoff is lower
responsiveness during peak demand.

### Usage

    apprunner_create_auto_scaling_configuration(
      AutoScalingConfigurationName, MaxConcurrency, MinSize, MaxSize, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_create_auto_scaling_configuration_:_AutoScalingConfigurationName">AutoScalingConfigurationName</code></td>
<td><p>[required] A name for the auto scaling configuration. When you
use it for the first time in an Amazon Web Services Region, App Runner
creates revision number <code>1</code> of this name. When you use the
same name in subsequent calls, App Runner creates incremental revisions
of the configuration.</p>
<p>The name <code>DefaultConfiguration</code> is reserved (it's the
configuration that App Runner uses if you don't provide a custome one).
You can't use it to create a new auto scaling configuration, and you
can't create a revision of it.</p>
<p>When you want to use your own auto scaling configuration for your App
Runner service, <em>create a configuration with a different name</em>,
and then provide it when you create or update your service.</p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_create_auto_scaling_configuration_:_MaxConcurrency">MaxConcurrency</code></td>
<td><p>The maximum number of concurrent requests that you want an
instance to process. If the number of concurrent requests exceeds this
limit, App Runner scales up your service.</p>
<p>Default: <code>100</code></p></td>
</tr>
<tr class="odd">
<td><code
id="apprunner_create_auto_scaling_configuration_:_MinSize">MinSize</code></td>
<td><p>The minimum number of instances that App Runner provisions for
your service. The service always has at least <code>MinSize</code>
provisioned instances. Some of them actively serve traffic. The rest of
them (provisioned and inactive instances) are a cost-effective compute
capacity reserve and are ready to be quickly activated. You pay for
memory usage of all the provisioned instances. You pay for CPU usage of
only the active subset.</p>
<p>App Runner temporarily doubles the number of provisioned instances
during deployments, to maintain the same capacity for both old and new
code.</p>
<p>Default: <code>1</code></p></td>
</tr>
<tr class="even">
<td><code
id="apprunner_create_auto_scaling_configuration_:_MaxSize">MaxSize</code></td>
<td><p>The maximum number of instances that your service scales up to.
At most <code>MaxSize</code> instances actively serve traffic for your
service.</p>
<p>Default: <code>25</code></p></td>
</tr>
<tr class="odd">
<td><code
id="apprunner_create_auto_scaling_configuration_:_Tags">Tags</code></td>
<td><p>A list of metadata items that you can associate with your auto
scaling configuration resource. A tag is a key-value pair.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AutoScalingConfiguration = list(
        AutoScalingConfigurationArn = "string",
        AutoScalingConfigurationName = "string",
        AutoScalingConfigurationRevision = 123,
        Latest = TRUE|FALSE,
        Status = "ACTIVE"|"INACTIVE",
        MaxConcurrency = 123,
        MinSize = 123,
        MaxSize = 123,
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        DeletedAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$create_auto_scaling_configuration(
      AutoScalingConfigurationName = "string",
      MaxConcurrency = 123,
      MinSize = 123,
      MaxSize = 123,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
