<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycluster_update_routing_control_state</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Set the state of the routing control to reroute traffic

### Description

Set the state of the routing control to reroute traffic. You can set the
value to be On or Off. When the state is On, traffic flows to a cell.
When the state is Off, traffic does not flow.

With Route 53 ARC, you can add safety rules for routing controls, which
are safeguards for routing control state updates that help prevent
unexpected outcomes, like fail open traffic routing. However, there are
scenarios when you might want to bypass the routing control safeguards
that are enforced with safety rules that you've configured. For example,
you might want to fail over quickly for disaster recovery, and one or
more safety rules might be unexpectedly preventing you from updating a
routing control state to reroute traffic. In a "break glass" scenario
like this, you can override one or more safety rules to change a routing
control state and fail over your application.

The `SafetyRulesToOverride` property enables you override one or more
safety rules and update routing control states. For more information,
see [Override safety rules to reroute
traffic](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html)
in the Amazon Route 53 Application Recovery Controller Developer Guide.

*You must specify Regional endpoints when you work with API cluster
operations to get or update routing control states in Route 53 ARC.*

To see a code example for getting a routing control state, including
accessing Regional cluster endpoints in sequence, see [API
examples](https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html)
in the Amazon Route 53 Application Recovery Controller Developer Guide.

-   [Viewing and updating routing control
    states](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)

-   [Working with routing controls
    overall](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)

### Usage

    route53recoverycluster_update_routing_control_state(RoutingControlArn,
      RoutingControlState, SafetyRulesToOverride)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoverycluster_update_routing_control_state_:_RoutingControlArn">RoutingControlArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the routing control
that you want to update the state for.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoverycluster_update_routing_control_state_:_RoutingControlState">RoutingControlState</code></td>
<td><p>[required] The state of the routing control. You can set the
value to be On or Off.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53recoverycluster_update_routing_control_state_:_SafetyRulesToOverride">SafetyRulesToOverride</code></td>
<td><p>The Amazon Resource Names (ARNs) for the safety rules that you
want to override when you're updating the state of a routing control.
You can override one safety rule or multiple safety rules by including
one or more ARNs, separated by commas.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html">Override
safety rules to reroute traffic</a> in the Amazon Route 53 Application
Recovery Controller Developer Guide.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_routing_control_state(
      RoutingControlArn = "string",
      RoutingControlState = "On"|"Off",
      SafetyRulesToOverride = list(
        "string"
      )
    )
