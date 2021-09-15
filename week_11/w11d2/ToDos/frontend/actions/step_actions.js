export const RECEIVE_STEP = "RECEIVE_STEP";
export const RECEIVE_STEPS = "RECEIVE_STEPS";
export const REMOVE_STEP = "REMOVE_STEP";


export const receiveSteps = (steps) => {
    return {
        type: RECEIVE_STEPS,
        todos,
    };
};

export const receiveStep = (step) => {
    return {
        type: RECEIVE_STEP,
        todo,
    };
};

export const removeStep = (step) => {
    return {
        type: REMOVE_STEP,
        todo,
    };
};