<script setup>
import { ref, defineProps } from 'vue';

const props = defineProps(['tools'])
</script>
<template>
    <div class="exercise-list">
        <ul class="no-bullets">
            <li v-for="( tool, index ) in props.tools" :key="index">
                {{ tool }}
            </li>
        </ul>
    </div>
</template>