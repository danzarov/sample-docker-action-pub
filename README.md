# Sample docker action

This action performs a workflow that can be used as placeholder for others.

## Inputs

### `placeholder_par1`

**Required** The name of the parameter. Default `"default par1"`.

## Outputs

### `placeholder_output1`

## Example usage

```
on: [push]

jobs:
  sample_job:
    runs-on: ubuntu-latest
    name: A job to perform an workflow that can be modified to fit your needs.
    steps:

      - name: Checkout
        uses: actions/checkout@v2

      - name: Pass a parameter to the action.yml
        uses: danzarov/sample-docker-action-pub@v1  
        id: sample
        with:
          placeholder_par1: 'a very cool parameter! :)'
        env:
          my_secret_env_var: ${{ secrets.my_secret_env_var }} 

      - name: Get the output placeholder_output1 generated through the execution of action/dockerfile/entrypoint.sh.
        run: echo "output received -> ${{ steps.sample.outputs.placeholder_output1 }}"

```