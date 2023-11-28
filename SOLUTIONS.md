# Solutions

Don't look at this unless you're really, really stuck.  One of many possible solutions below.

<details><summary>basic_return_json</summary>

```shell
jq '.type' simple_1.json
```

</details>

<details><summary>unique_sorted_return_json
</summary>
We can use `[.[].type]` to get an array of the values corresponding to `type`, then we take uniques, sort those, and join together.

```shell
jq '[.[].type] | unique | sort | join("")' /data/simple_2.json
```

</details>
