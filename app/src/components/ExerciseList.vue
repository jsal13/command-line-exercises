<script setup>
import { ref, watch, onMounted } from 'vue';
import { exerciseList } from "../exercises"
import RecommendedTools from "./RecommendedTools.vue"

var currentExercise = ref("")
var currentExerciseData = ref({
    "html": "",
    "solution": "",
    "recommendedTools": []
})
var userSolution = ref(null)
var solved = ref(null)

onMounted(() => {
    currentExercise.value = Object.keys(exerciseList)[0]
})

function setCurrentExercise(event) {
    resetValues()
    // Set the id of the button (the exercise name).
    currentExercise.value = event.target.id
}

function formatTitle(title) {
    // Changes title to uppercase, removes _s.
    return title.replace(/_/g, " ")
}

function solve() {
    // Checks user solution against real solution.
    if (userSolution.value === currentExerciseData.value.solution) {
        solved.value = true
    } else {
        solved.value = false
    }
}

function resetValues() {
    userSolution.value = ""
    solved.value = null
}

watch(currentExercise, async () => {
    currentExerciseData.value = exerciseList[currentExercise.value]
})

</script>
<template>
    <div class="exercise-list wrapper">
        <div class="box header">
            <h1>{{ formatTitle(currentExercise) }}</h1>
        </div>
        <div class="box sidebar">
            <h2>Exercises</h2>
            <ul class="no-bullets">
                <li v-for="(_, name, index) in exerciseList" :key="index">
                    <button :id="name" @click="setCurrentExercise($event)">{{ name }}</button>
                </li>
            </ul>
        </div>

        <div class="box content">
            <span v-html="currentExerciseData.html"></span>

            <input v-model="userSolution" placeholder="Solution" @keyup.enter="solve" />

            <button id=" solution-button" @click="solve">Submit</button>

            <br />
            <br />

            <div class="right-or-wrong">
                <div v-if="solved === null">
                </div>
                <div v-else-if="solved">
                    <span class="solved-correctly">That's right!</span>
                </div>
                <div v-else>
                    <span class="not-solved-correctly">Not quite...</span>
                </div>
            </div>
        </div>

        <div class="box footer">
            <h2>Suggested Tools</h2>
            <RecommendedTools :tools="currentExerciseData.recommendedTools" />
        </div>


    </div>
</template>