const exerciseList = {
    "basic_return_json": {
        "html": `
        <p>Find the value corresponding to the key <code>type</code> in the JSON file <code>/data/simple_1.json</code>.  That's the solution.</p>
        `,
        "solution": "hammer",
        "recommendedTools": ["jq"]
    },

    "unique_sorted_return_json": {
        "html": `
            <p>Take the <i>unique</i> string values corresponding to the key <code>type</code> in <code>/data/simple_2.json</code>, sort them alphabetically, then concatenate those strings together without spaces.  The result is the solution.</p>
        `,
        "solution": "gluehammernailscrewscrewdriver",
        "recommendedTools": ["jq"]
    }
}

export { exerciseList };