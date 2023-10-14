export const serverHandler = (error, res) => {
    console.error(error);
    return res.status(500).json({
        message: "Error del servidor!",
    });
}

export const notFoundHandler = (message,result, res) => {
    const { tableName, query } = result
    return res.status(404).json({
        message,
        tableName,
        query,
    });
}
