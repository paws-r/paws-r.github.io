<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_get_bootstrap_brokers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A list of brokers that a client application can use to bootstrap

### Description

A list of brokers that a client application can use to bootstrap.

### Usage

    kafka_get_bootstrap_brokers(ClusterArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_get_bootstrap_brokers_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that uniquely
identifies the cluster.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BootstrapBrokerString = "string",
      BootstrapBrokerStringTls = "string",
      BootstrapBrokerStringSaslScram = "string",
      BootstrapBrokerStringSaslIam = "string",
      BootstrapBrokerStringPublicTls = "string",
      BootstrapBrokerStringPublicSaslScram = "string",
      BootstrapBrokerStringPublicSaslIam = "string",
      BootstrapBrokerStringVpcConnectivityTls = "string",
      BootstrapBrokerStringVpcConnectivitySaslScram = "string",
      BootstrapBrokerStringVpcConnectivitySaslIam = "string"
    )

### Request syntax

    svc$get_bootstrap_brokers(
      ClusterArn = "string"
    )
